package model;

import java.time.LocalDate;

public class Customer {

	private int customerId;
	private String nationalId; // DNI
	private String taxId; // CUIL
	private String firstName;
	private String lastName;
	// TODO: ask teacher for about char or enum to sex variable;
	private String gender;
	private LocalDate birthDate;
	private String address;
	private String nationality;
	private String city;
	private String province;
	private String email;
	private String phoneNumber;

	public Customer() {

	}

	public Customer(String nationalId, String taxId, String firstName, String lastName, String gender,
	    LocalDate birthDate, String address, String nationality, String city, String province,
	    String email, String phoneNumber) {
		this.nationalId = nationalId;
		this.taxId = taxId;
		this.firstName = firstName;
		this.lastName = lastName;
		this.gender = gender;
		this.birthDate = birthDate;
		this.address = address;
		this.nationality = nationality;
		this.city = city;
		this.province = province;
		this.email = email;
		this.phoneNumber = phoneNumber;
	}

	public int getCustomerId() {
		return customerId;
	}

	public void setCustomerId(int customerId) {
		this.customerId = customerId;
	}

	public String getNationalId() {
		return nationalId;
	}

	public void setNationalId(String nationalId) {
		this.nationalId = nationalId;
	}

	public String getTaxId() {
		return taxId;
	}

	public void setTaxId(String taxId) {
		this.taxId = taxId;
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

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public LocalDate getBirthDate() {
		return birthDate;
	}

	public void setBirthDate(LocalDate birthDate) {
		this.birthDate = birthDate;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getNationality() {
		return nationality;
	}

	public void setNationality(String nationality) {
		this.nationality = nationality;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getProvince() {
		return province;
	}

	public void setProvince(String province) {
		this.province = province;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	@Override
	public String toString() {
		return "Customer [customerId=" + customerId + ", nationalId=" + nationalId + ", taxId=" + taxId
		    + ", firstName=" + firstName + ", lastName=" + lastName + ", gender=" + gender
		    + ", birthDate=" + birthDate + ", address=" + address + ", nationality=" + nationality
		    + ", city=" + city + ", province=" + province + ", email=" + email + ", phoneNumber="
		    + phoneNumber + "]";
	}

}
