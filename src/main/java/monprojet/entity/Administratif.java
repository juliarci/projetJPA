package monprojet.entity;

import jakarta.persistence.DiscriminatorValue;
import jakarta.persistence.Entity;
@Entity
@DiscriminatorValue("A")
public class Administratif extends  Employe{
    private String diplome;
}
