package hr.tvz.matkovic.model;


import javax.persistence.*;
import java.io.Serializable;

/**
 * Created by Matkovic on 10/07/2017.
 */
@Entity
@Table(name = "CHEMICAL_ELEMENT", schema = "PERIODIC_SYSTEM")
public class ChemicalElement implements Serializable {

    @Column(name = "NAME")
    private String name;

    @Column(name = "SYMBOL")
    private String symbol;

    @Column(name = "TYPE")
    private String type;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ATOMIC_NUMBER")
    private Integer atomicNumber;

    @Column(name = "BLOCK")
    private char block;

    @Column(name = "STATE_AT_20C")
    private String stateAt20C;

    @Column(name = "ELECTRON_CONFIGURATION")
    private String electronConfiguration;

    @Column(name = "MELTING_POINT_IN_C")
    private Double meltingPointInC;

    @Column(name = "BOILING_POINT_IN_C")
    private Double boilingPointInC;

    @Column(name = "ATOMIC_MASS")
    private Double atomicMass;

    @Column(name = "ATOMIC_RADIUS")
    private Double atomicRadius;

    @Column(name = "ELECTRONEGATIVITY")
    private Double electronegativity;

    @Column(name = "COMMON_OXIDATION_STATES")
    private String commonOxidationStates;

    public ChemicalElement() {
    }

    //--- set / get methods ---------------------------------------------------

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

    public Double getMeltingPointInC() {
        return meltingPointInC;
    }

    public void setMeltingPointInC(Double meltingPoint) {
        this.meltingPointInC = meltingPoint;
    }

    public Double getBoilingPointInC() {
        return boilingPointInC;
    }

    public void setBoilingPointInC(Double boilingPoint) {
        this.boilingPointInC = boilingPoint;
    }

    public Double getAtomicMass() {
        return atomicMass;
    }

    public void setAtomicMass(Double atomicMass) {
        this.atomicMass = atomicMass;
    }

    public Double getAtomicRadius() {
        return atomicRadius;
    }

    public void setAtomicRadius(Double atomicRadius) {
        this.atomicRadius = atomicRadius;
    }

    public Double getElectronegativity() {
        return electronegativity;
    }

    public void setElectronegativity(Double electronegativity) {
        this.electronegativity = electronegativity;
    }

    public String getCommonOxidationStates() {
        return commonOxidationStates;
    }

    public void setCommonOxidationStates(String commonOxidationStates) {
        this.commonOxidationStates = commonOxidationStates;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }
}
