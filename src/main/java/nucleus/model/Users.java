package nucleus.model;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name = "N2users")
public class Users {
    @Id
    private String username;
    private String password;

    private boolean enabled;
    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "authority",foreignKey = @ForeignKey(name = "fk_roles_users"))
    private Roles role;


    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Roles getRole() {
        return role;
    }

    public void setRole(Roles role) {
        this.role = role;
    }
}
