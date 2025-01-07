package bg.tourguidesmg.model;

import jakarta.persistence.*;

@Entity
@Table
public class Destination {
    @Id
    @GeneratedValue(strategy =  GenerationType.IDENTITY)
    private long id;
    @Column
    private String name;
    @Column
    private Country country;

}
