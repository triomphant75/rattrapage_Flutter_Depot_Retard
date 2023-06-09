package ISM.repository;

import ISM.entities.Etudiant;
import org.springframework.data.jpa.repository.JpaRepository;

public interface EtudiantRepository  extends JpaRepository<Etudiant,Long> {
}
