package hr.tvz.matkovic.service.impl;

import hr.tvz.matkovic.model.ChemicalElement;
import hr.tvz.matkovic.model.KeyIsotope;
import hr.tvz.matkovic.repository.KeyIsotopeRepository;
import hr.tvz.matkovic.service.KeyIsotopeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Matkovic on 06/08/2017.
 */
@Service
public class KeyIsotopeServiceImpl implements KeyIsotopeService {

    @Autowired
    private KeyIsotopeRepository keyIsotopeRepository;


    @Override
    public List<KeyIsotope> findAllByChemicalElement(ChemicalElement chemicalElement) {
        return keyIsotopeRepository.findAllByChemicalElement(chemicalElement);
    }
}
