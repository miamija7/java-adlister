package models;

import java.util.Date;
import java.util.List;

public class Pet {
    // Variables
    private long id;
    private String breed;
    private String name;
    private Date birthdate;
    private List<String> vaccinations;
    private Employee vet;

    // Constrictors
    public Pet(){};
    public Pet(long id, String breed, String name, Date birthdate, List<String> vaccinations, Employee vet) {
        this.id = id;
        this.breed = breed;
        this.name = name;
        this.birthdate = birthdate;
        this.vaccinations = vaccinations;
        this.vet = vet;
    }

    // Methods
    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getBreed() {
        return breed;
    }

    public void setBreed(String breed) {
        this.breed = breed;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Date getBirthdate() {
        return birthdate;
    }

    public void setBirthdate(Date birthdate) {
        this.birthdate = birthdate;
    }

    public List<String> getVaccinations() {
        return vaccinations;
    }

    public void setVaccinations(List<String> vaccinations) {
        this.vaccinations = vaccinations;
    }

    public Employee getVet() {
        return vet;
    }

    public void setVet(Employee vet) {
        this.vet = vet;
    }
}
