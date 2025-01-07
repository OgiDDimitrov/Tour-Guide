package bg.tourguidesmg.model;

import jakarta.persistence.*;

@Entity
@Table
public class Reserve {
    @Id
    @GeneratedValue(strategy =  GenerationType.IDENTITY)
    private long id;
    @Column
    private Reservation reservation;
    @Column
    private Traveller travellers;

    public Reserve() {
    }

    public Reserve(long id, Reservation reservation, Traveller travellers) {
        this.id = id;
        this.reservation = reservation;
        this.travellers = travellers;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public Reservation getReservation() {
        return reservation;
    }

    public void setReservation(Reservation reservation) {
        this.reservation = reservation;
    }

    public Traveller getTravellers() {
        return travellers;
    }

    public void setTravellers(Traveller travellers) {
        this.travellers = travellers;
    }

    @Override
    public String toString() {
        return "Reserve{" +
                "id=" + id +
                ", reservation=" + reservation +
                ", travellers=" + travellers +
                '}';
    }
}
