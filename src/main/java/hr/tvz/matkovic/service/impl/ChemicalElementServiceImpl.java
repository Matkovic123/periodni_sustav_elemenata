package hr.tvz.matkovic.service.impl;

import hr.tvz.matkovic.model.ChemicalElement;
import hr.tvz.matkovic.repository.ChemicalElementRepository;
import hr.tvz.matkovic.service.ChemicalElementService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Matkovic on 28/07/2017.
 */
@Service
public class ChemicalElementServiceImpl implements ChemicalElementService {

    @Autowired
    private ChemicalElementRepository chemicalElementRepository;

    @Override
    public List<ChemicalElement> findAll() {
        return chemicalElementRepository.findAll();
    }

    @Override
    public ChemicalElement findById(Integer id) {
        return chemicalElementRepository.findOne(id);
    }

    @Override
    public ChemicalElement findByatomic_number(Integer atomicNumber) {
        return chemicalElementRepository.findByAtomicNumber(atomicNumber);
    }
}
