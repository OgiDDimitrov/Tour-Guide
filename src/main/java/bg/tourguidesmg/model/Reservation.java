package bg.tourguidesmg.model;

import jakarta.persistence.*;

@Entity
@Table
public class Reservation {
    @Id
    @GeneratedValue(strategy =  GenerationType.IDENTITY)
    private long id;
    @Column
    private double totalPrice;
    @Column
    private Trip trip;
    @Column
    private PaymentStatus ps;
    @Column
    private User user;

}
