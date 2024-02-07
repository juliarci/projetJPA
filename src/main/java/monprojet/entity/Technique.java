package monprojet.entity;


import jakarta.persistence.DiscriminatorValue;
import jakarta.persistence.Entity;

@Entity
@DiscriminatorValue("T")
public class Technique extends Employe {

    private float montantPrime;
}
