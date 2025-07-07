package nucleus.model;

import org.springframework.stereotype.Component;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;

@Component
@Entity
@Table(name = "n2role")
public class Roles {
    @Id
    private String authority;
    @OneToMany(cascade = CascadeType.ALL,mappedBy = "role")
    private Set<Users> users = new HashSet<Users>();


    public String getAuthority() {
        return authority;
    }

    public void setAuthority(String authority) {
        this.authority = authority;
    }

    public Set<Users> getUsers() {
        return users;
    }

    public void setUsers(Set<Users> users) {
        this.users = users;
    }
}
