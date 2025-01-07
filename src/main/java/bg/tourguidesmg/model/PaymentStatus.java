package bg.tourguidesmg.model;

import jakarta.persistence.*;

@Entity
@Table
public class PaymentStatus {

    @Id
    @GeneratedValue(strategy =  GenerationType.IDENTITY)
    private long id;
    @Column
    private String name;

    public PaymentStatus(long id, String name) {
        this.id = id;
        this.name = name;
    }

    public PaymentStatus() {
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return "PaymentStatus{" +
                "id=" + id +
                ", name='" + name + '\'' +
                '}';
    }
}
