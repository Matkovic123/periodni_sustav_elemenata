package hr.tvz.matkovic.controller;

import hr.tvz.matkovic.model.ChemicalElement;
import hr.tvz.matkovic.repository.KeyIsotopeRepository;
import hr.tvz.matkovic.service.ChemicalElementService;
import hr.tvz.matkovic.service.impl.KeyIsotopeServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Matkovic on 28/07/2017.
 */
@Controller
public class PeriodicTableController {

    // --- MODEL ATTRIBUTES ---------------------------------------------------
    private static final String CHEMICAL_ELEMENTS = "chemicalElements";
    private static final String CHEMICAL_ELEMENT = "chemicalElement";
    private static final String KEY_ISOTOPES = "keyIsotopes";


    // --- SERVICES -----------------------------------------------------------
    @Autowired
    private ChemicalElementService chemicalElementService;

    @Autowired
    private KeyIsotopeRepository keyIsotopeRepository;

    @RequestMapping("periodic_table")
    public String showPeriodicTable(Model model) {
        model.addAttribute(CHEMICAL_ELEMENTS, chemicalElementService.findAll());
        return "periodic_system";
    }

    @GetMapping("/element/{atomicNumber}")
    public String showElementDetails(@PathVariable("atomicNumber") final Integer atomicNumber, Model model) {

        ChemicalElement chemicalElement = chemicalElementService.findByatomic_number(atomicNumber);

        model.addAttribute(CHEMICAL_ELEMENT,chemicalElement);
        model.addAttribute(KEY_ISOTOPES,keyIsotopeRepository.findAllByChemicalElement(chemicalElement));
        return "element_details";
    }
}
