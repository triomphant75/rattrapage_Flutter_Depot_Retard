package ISM.Controllers;

import ISM.entities.Etudiant;
import ISM.repository.EtudiantRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.ui.Model;


@Controller
public class EtudiantController {
    @Autowired
    private EtudiantRepository etudiantRepository;

    @GetMapping("/inscription")
    public String afficherFormulaireInscription(Model model) {
        model.addAttribute("etudiant", new Etudiant());
        return "inscription";
    }

    @PostMapping("/inscription")
    public String soumettreFormulaireInscription(@ModelAttribute("etudiant") Etudiant etudiant) {
        // Validation des données de l'étudiant
        // Effectuer des opérations supplémentaires si nécessaire
        // Enregistrer l'étudiant dans la base de données
        etudiantRepository.save(etudiant);

        return "confirmation";
    }

}
