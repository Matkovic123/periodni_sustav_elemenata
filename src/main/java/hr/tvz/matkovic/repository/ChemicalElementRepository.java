package hr.tvz.matkovic.repository;

import hr.tvz.matkovic.model.ChemicalElement;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 * Created by Matkovic on 28/07/2017.
 */
@Repository
public interface ChemicalElementRepository extends JpaRepository<ChemicalElement, Integer> {

    ChemicalElement findByAtomicNumber(Integer atomicNumber);
}
