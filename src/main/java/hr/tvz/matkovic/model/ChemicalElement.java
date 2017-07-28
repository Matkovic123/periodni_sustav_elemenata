package hr.tvz.matkovic.model;


import javax.persistence.*;

/**
 * Created by Matkovic on 10/07/2017.
 */
@Entity
@Table(name = "chemical_element", schema = "periodic_system")
public class ChemicalElement {

    @Column(name = "name")
    private String name;

    @Column(name = "symbol")
    private String symbol;

    @Id
    @GeneratedValue
    @Column(name = "atomic_number")
    private Integer atomicNumber;

    @Column(name = "block")
    private char block;

    @Column(name = "state_at_20c")
    private String stateAt20C;

    @Column(name = "electron_configuration")
    private String electronConfiguration;

    @Column(name = "melting_point_in_c")
    private String meltingPoint;

    @Column(name = "boiling_point_in_c")
    private String boilingPoint;

    @Column(name = "atomic_mass")
    private Double atomicMass;

    @Column(name = "atomic_radius")
    private String atomicRadius;

    @Column(name = "electronegativity")
    private String electronegativity;

    @Column(name = "common_oxidation_states")
    private String commonOxidationStates;

    public ChemicalElement(){}

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSymbol() {
        return symbol;
    }

    public void setSymbol(String symbol) {
        this.symbol = symbol;
    }

    public Integer getAtomicNumber() {
        return atomicNumber;
    }

    public void setAtomicNumber(Integer atomicNumber) {
        this.atomicNumber = atomicNumber;
    }

    public char getBlock() {
        return block;
    }

    public void setBlock(char block) {
        this.block = block;
    }

    public String getStateAt20C() {
        return stateAt20C;
    }

    public void setStateAt20C(String stateAt20C) {
        this.stateAt20C = stateAt20C;
    }

    public String getElectronConfiguration() {
        return electronConfiguration;
    }

    public void setElectronConfiguration(String electronConfiguration) {
        this.electronConfiguration = electronConfiguration;
    }

    public String getMeltingPoint() {
        return meltingPoint;
    }

    public void setMeltingPoint(String meltingPoint) {
        this.meltingPoint = meltingPoint;
    }

    public String getBoilingPoint() {
        return boilingPoint;
    }

    public void setBoilingPoint(String boilingPoint) {
        this.boilingPoint = boilingPoint;
    }

    public Double getAtomicMass() {
        return atomicMass;
    }

    public void setAtomicMass(Double atomicMass) {
        this.atomicMass = atomicMass;
    }

    public String getAtomicRadius() {
        return atomicRadius;
    }

    public void setAtomicRadius(String atomicRadius) {
        this.atomicRadius = atomicRadius;
    }

    public String getElectronegativity() {
        return electronegativity;
    }

    public void setElectronegativity(String electronegativity) {
        this.electronegativity = electronegativity;
    }

    public String getCommonOxidationStates() {
        return commonOxidationStates;
    }

    public void setCommonOxidationStates(String commonOxidationStates) {
        this.commonOxidationStates = commonOxidationStates;
    }
}
