package bg.tourguidesmg.model;


import jakarta.persistence.*;

@Entity
@Table(name = "countries")
public class Country {


    @Id
    @GeneratedValue(strategy =  GenerationType.IDENTITY)
    private long id;

    @Column(name = "country_name")
    private String name;




    public Country(long id, String name) {
        this.id = id;
        this.name = name;
    }

    public Country() {
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
        return "Country{" +
                "id=" + id +
                ", name='" + name + '\'' +
                '}';
    }
}
