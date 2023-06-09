package API.controller;


import ISM.entities.Etudiant;
import ISM.repository.EtudiantRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class EtudiantApiRest {

    @Autowired
    private EtudiantRepository etudiantRepository;
    @GetMapping("/etudiants")
    public List<Etudiant> getEtudiants() {
        return etudiantRepository.findAll();
    }
}
