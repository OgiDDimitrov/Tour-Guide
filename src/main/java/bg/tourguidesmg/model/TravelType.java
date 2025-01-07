package bg.tourguidesmg.model;

import jakarta.persistence.*;

@Entity
@Table
public class TravelType {
    @Id
    @GeneratedValue(strategy =  GenerationType.IDENTITY)
    private long id;
    @Column
    private String name;


    public TravelType(long id, String name) {
        this.id = id;
        this.name = name;
    }

    public TravelType() {
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
        return "TravelType{" +
                "id=" + id +
                ", name='" + name + '\'' +
                '}';
    }
}
