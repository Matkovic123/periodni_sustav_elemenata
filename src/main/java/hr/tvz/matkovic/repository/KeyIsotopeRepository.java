package hr.tvz.matkovic.repository;

import hr.tvz.matkovic.model.ChemicalElement;
import hr.tvz.matkovic.model.KeyIsotope;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface KeyIsotopeRepository extends JpaRepository<KeyIsotope, Long>
{
    List<KeyIsotope> findAllByChemicalElement(ChemicalElement chemicalElement);
}
