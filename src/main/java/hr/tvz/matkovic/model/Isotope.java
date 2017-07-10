package hr.tvz.matkovic.model;

import javax.persistence.*;

/**
 * Created by Matkovic on 10/07/2017.
 */
@Entity(name = "isotope")
public class Isotope {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @Column(name = "NAME")
    private String name;

    @ManyToOne
    @JoinColumn(name = "CHEMICAL_ELEMENT_ID")
    private ChemicalElement chemicalElement;

    public Isotope(){}

    public Isotope(String name, ChemicalElement chemicalElement) {
        this.name = name;
        this.chemicalElement = chemicalElement;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public ChemicalElement getChemicalElement() {
        return chemicalElement;
    }

    public void setChemicalElement(ChemicalElement chemicalElement) {
        this.chemicalElement = chemicalElement;
    }
}
