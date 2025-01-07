package bg.tourguidesmg.model;

import jakarta.persistence.*;

import java.util.Date;

@Entity
@Table
public class Trip {
    @Id
    @GeneratedValue(strategy =  GenerationType.IDENTITY)
    private long id;
    @Column
    private String name;
    @Column
    private Date startDate;
    @Column
    private Date endDate;
    @Column
    private double pricePerPerson;
    @Column
    private String photo;
    @Column
    private TripType trpt;



}
