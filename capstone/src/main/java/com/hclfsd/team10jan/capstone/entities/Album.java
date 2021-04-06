package com.hclfsd.team10jan.capstone.entities;

import javax.persistence.*;

import lombok.Data;
import lombok.NoArgsConstructor;

import java.math.BigDecimal;
import java.util.Date;

@Entity
@Table(name="album")
@Data
@NoArgsConstructor
public class Album {

    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    private Long id;

    private String Name;

    @ManyToOne
    private Genre genre;

    private String artist;

    private Date releaseDate;

    private BigDecimal price;


}
