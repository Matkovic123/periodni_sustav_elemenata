package hr.tvz.matkovic.model;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "USER_ROLE", schema = "PERIODIC_SYSTEM")
public class UserRole implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "ROLE")
    private String role;

    public UserRole(){}

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }
}
