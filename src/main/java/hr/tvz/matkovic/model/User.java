package hr.tvz.matkovic.model;

import javax.persistence.*;
import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

/**
 * Created by Matkovic on 09/07/2017.
 */
@Entity
@Table(name = "USER", schema = "PERIODIC_SYSTEM")
public class User implements Serializable {


    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Column(name = "USERNAME", nullable = false, unique = true)
    private String username;
    @Column(name = "PASSWORD", nullable = false)
    private String password;
    @Column(name = "ENABLED", nullable = false)
    private Boolean enabled;

    @ManyToMany(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
    @JoinTable(name = "USER_ROLES", schema = "PERIODIC_SYSTEM", joinColumns = {
            @JoinColumn(name = "USER_ID", nullable = false, updatable = false)},
            inverseJoinColumns = {@JoinColumn(name = "USER_ROLE_ID",
                    nullable = false, updatable = false)})
    private Set<UserRole> userRoles = new HashSet<>(0);

    public User() {
    }

    //--- set / get methods ---------------------------------------------------


    public Set<UserRole> getUserRoles() {
        return userRoles;
    }

    public void setUserRoles(Set<UserRole> userRoles) {
        this.userRoles = userRoles;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Boolean getEnabled() {
        return enabled;
    }

    public void setEnabled(Boolean enabled) {
        this.enabled = enabled;
    }
}
