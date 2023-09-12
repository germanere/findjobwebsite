package com.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "cv")
public class CV {
	
    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;
    
    @Column(name = "filename")
    private String filename;
    
    @ManyToOne
    @JoinColumn(name="user_id")
    private CV cvs;

	public CV(int id, String filename, CV cvs) {
		super();
		this.id = id;
		this.filename = filename;
		this.cvs = cvs;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFilename() {
		return filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}

	public CV getCvs() {
		return cvs;
	}

	public void setCvs(CV cvs) {
		this.cvs = cvs;
	}

	@Override
	public String toString() {
		return "CV [id=" + id + ", filename=" + filename + ", cvs=" + cvs + "]";
	}
    
   
}
