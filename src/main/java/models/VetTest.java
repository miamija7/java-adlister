package models;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class VetTest {
    public static void main(String[] args) {
        Employee drDoolittle = new Employee(1, "John", "Doolittle", 'M');

        List<String> vaccines = new ArrayList<>();
        vaccines.add("rabies");
        vaccines.add("parvo");
        vaccines.add("bordatella");
        Pet soc = new Pet(101, "Shitzhu", "Soc", new Date(), vaccines, drDoolittle);

        List<Pet> dolittlePatients = new ArrayList<>();
        dolittlePatients.add(soc);
        drDoolittle.setPatients(dolittlePatients);

        for (Pet pet : drDoolittle.getPatients()){
            System.out.println("Patient " + pet.getId() + ": " + pet.getName());
        }

        System.out.println("Dr. Doolittle's Patients");
        for(Pet pet: drDoolittle.getPatients()) {
            System.out.println(pet.getName());
            for (String vaccine: pet.getVaccinations()){
                System.out.println( vaccine);
            }
            System.out.println(pet.getVet());
        }
    }
}
