package hr.tvz.matkovic.service;

import hr.tvz.matkovic.model.ChemicalElement;
import hr.tvz.matkovic.model.KeyIsotope;

import java.util.List;
/**
 * Created by Matkovic on 06/08/2017.
 */
public interface KeyIsotopeService {

    List<KeyIsotope> findAllByChemicalElement(ChemicalElement chemicalElement);
}
