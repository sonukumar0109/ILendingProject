package nucleus.model;

import com.sun.istack.NotNull;
import org.springframework.stereotype.Component;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Component
@Entity
@Table(name = "N2customers")
public class Customer {
    @Id
    @NotNull
    private int userCode;
    @NotNull
    private String firstName;
    @NotNull
    private String lastName;
    @NotNull
    private int organizationCode;
    private String organizationName;
    @NotNull
    private String groupCode;
    private String groupName;
    private String userType;
    private String mobileNo;
    @NotNull
    private String email;


    public Customer(int userCode, String firstName, String lastName, int organizationCode,
                    String organizationName, String groupCode, String groupName, String userType,
                    String mobileNo, String email) {
        this.userCode = userCode;
        this.firstName = firstName;
        this.lastName = lastName;
        this.organizationCode = organizationCode;
        this.organizationName = organizationName;
        this.groupCode = groupCode;
        this.groupName = groupName;
        this.userType = userType;
        this.mobileNo = mobileNo;
        this.email = email;
    }

    public Customer() {
    }

    @Override
    public String toString() {
        return "Customer{" +
                "userCode=" + userCode +
                ", firstName='" + firstName + '\'' +
                ", lastName='" + lastName + '\'' +
                ", organizationCode=" + organizationCode +
                ", organizationName='" + organizationName + '\'' +
                ", groupCode='" + groupCode + '\'' +
                ", groupName='" + groupName + '\'' +
                ", userType='" + userType + '\'' +
                ", mobileNo=" + mobileNo +
                ", email='" + email + '\'' +
                '}';
    }

    public int getUserCode() {
        return userCode;
    }

    public void setUserCode(int userCode) {
        this.userCode = userCode;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public int getOrganizationCode() {
        return organizationCode;
    }

    public void setOrganizationCode(int organizationCode) {
        this.organizationCode = organizationCode;
    }

    public String getOrganizationName() {
        return organizationName;
    }

    public void setOrganizationName(String organizationName) {
        this.organizationName = organizationName;
    }

    public String getGroupCode() {
        return groupCode;
    }

    public void setGroupCode(String groupCode) {
        this.groupCode = groupCode;
    }

    public String getGroupName() {
        return groupName;
    }

    public void setGroupName(String groupName) {
        this.groupName = groupName;
    }

    public String getUserType() {
        return userType;
    }

    public void setUserType(String userType) {
        this.userType = userType;
    }

    public String getMobileNo() {
        return mobileNo;
    }

    public void setMobileNo(String mobileNo) {
        this.mobileNo = mobileNo;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }


}
