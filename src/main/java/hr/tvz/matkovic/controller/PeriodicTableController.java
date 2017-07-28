package hr.tvz.matkovic.controller;

import hr.tvz.matkovic.model.ChemicalElement;
import hr.tvz.matkovic.service.ChemicalElementService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * Created by Matkovic on 28/07/2017.
 */
@Controller
@RequestMapping("periodic_table")
public class PeriodicTableController {

    // --- MODEL ATTRIBUTES ---------------------------------------------------
    private static final String CHEMICAL_ELEMENTS = "chemicalElements";

    // --- SERVICES -----------------------------------------------------------
    @Autowired
    private ChemicalElementService chemicalElementService;

    @GetMapping
    public String showPeriodicTable(Model model)
    {
        model.addAttribute(CHEMICAL_ELEMENTS,chemicalElementService.findAll());
        return "periodic_system";
    }
}
