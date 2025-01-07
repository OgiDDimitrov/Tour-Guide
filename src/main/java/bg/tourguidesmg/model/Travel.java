package bg.tourguidesmg.model;

import jakarta.persistence.*;

@Entity
@Table
public class Travel {
    @Id
    @GeneratedValue(strategy =  GenerationType.IDENTITY)
    private long id;
    @Column
    private Destination destination;
    @Column
    private Trip trip;
    @Column
    private TravelType trvType;

    public Travel() {
    }

    public Travel(long id, Destination destination, Trip trip, TravelType trvType) {
        this.id = id;
        this.destination = destination;
        this.trip = trip;
        this.trvType = trvType;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public Destination getDestination() {
        return destination;
    }

    public void setDestination(Destination destination) {
        this.destination = destination;
    }

    public Trip getTrip() {
        return trip;
    }

    public void setTrip(Trip trip) {
        this.trip = trip;
    }

    public TravelType getTrvType() {
        return trvType;
    }

    public void setTrvType(TravelType trvType) {
        this.trvType = trvType;
    }

    @Override
    public String toString() {
        return "Travel{" +
                "id=" + id +
                ", destination=" + destination +
                ", trip=" + trip +
                ", trvType=" + trvType +
                '}';
    }
}
