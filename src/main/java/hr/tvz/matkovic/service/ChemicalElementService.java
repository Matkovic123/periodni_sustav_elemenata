package hr.tvz.matkovic.service;

import hr.tvz.matkovic.model.ChemicalElement;

import java.util.List;

/**
 * Created by Matkovic on 28/07/2017.
 */
public interface ChemicalElementService {

    List<ChemicalElement> findAll();

    ChemicalElement  findById(Long id);

    ChemicalElement findByatomic_number(Integer atomicNumber);
}
