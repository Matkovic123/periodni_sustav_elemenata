package hr.tvz.matkovic.model;

import javax.persistence.*;
import java.io.Serializable;

/**
 * Created by Matkovic on 10/07/2017.
 */
@Entity
@Table(name = "KEY_ISOTOPE", schema = "PERIODIC_SYSTEM")
public class KeyIsotope implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "SYMBOL",unique = true)
    private String symbol;

    @ManyToOne
    @JoinColumn(name = "CHEMICAL_ELEMENT_ATOMIC_NUMBER")
    private ChemicalElement chemicalElement;

    public KeyIsotope(){}

    public KeyIsotope(String name, ChemicalElement chemicalElement) {
        this.symbol = name;
        this.chemicalElement = chemicalElement;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getSymbol() {
        return symbol;
    }

    public void setSymbol(String name) {
        this.symbol = name;
    }

    public ChemicalElement getChemicalElement() {
        return chemicalElement;
    }

    public void setChemicalElement(ChemicalElement chemicalElement) {
        this.chemicalElement = chemicalElement;
    }
}
