package hr.tvz.matkovic.model;

import javax.persistence.*;

/**
 * Created by Matkovic on 10/07/2017.
 */
@Entity(name = "chemical_element")
public class ChemicalElement {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @Column(name = "NAME")
    private String name;

    @Column(name = "SYMBOL")
    private String symbol;

    @Column(name = "ATOMIC_NUMBER")
    private Integer atomicNumber;

    @Column(name = "BLOCK")
    private char block;

    @Column(name = "STATE_AT_20C")
    private String stateAt20C;

    @Column(name = "ELECTRON_CONFIGURATION")
    private String electronConfiguration;

    @Column(name = "MELTING_POINT")
    private String meltingPoint;

    @Column(name = "BOILING_POINT")
    private String boilingPoint;

    @Column(name = "ATOMIC_MASS")
    private Double atomicMass;

    @Column(name = "ATOMIC_RADIUS")
    private String atomicRadius;

    @Column(name = "ELECTRONEGATIVITY")
    private String electronegativity;

    @Column(name = "COMMON_OXIDATION_STATES")
    private String commonOxidationStates;

    public ChemicalElement(){}

    public ChemicalElement(String name, String symbol, Integer atomicNumber, char block, String stateAt20C,
                           String electronConfiguration, String meltingPoint, String boilingPoint, Double atomicMass,
                           String atomicRadius, String electronegativity, String commonOxidationStates) {
        this.name = name;
        this.symbol = symbol;
        this.atomicNumber = atomicNumber;
        this.block = block;
        this.stateAt20C = stateAt20C;
        this.electronConfiguration = electronConfiguration;
        this.meltingPoint = meltingPoint;
        this.boilingPoint = boilingPoint;
        this.atomicMass = atomicMass;
        this.atomicRadius = atomicRadius;
        this.electronegativity = electronegativity;
        this.commonOxidationStates = commonOxidationStates;
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
