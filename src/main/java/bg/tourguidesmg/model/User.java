package bg.tourguidesmg.model;

import jakarta.persistence.*;

@Entity
@Table
public class User extends Traveller {
    @Id
    @GeneratedValue(strategy =  GenerationType.IDENTITY)
    private long id;
    @Column
    private String name;
    @Column
    private String eMail;
    @Column
    private String password;

    public User(long id, String name, int age, String phone, String egn) {
        super(id, name, age, phone, egn);
    }
}
