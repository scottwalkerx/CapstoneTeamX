package com.hclfsd.team10jan.capstone.entities;

import javax.persistence.*;

import lombok.Data;
import lombok.NoArgsConstructor;


@Entity
@Table(name="genre")
@Data
@NoArgsConstructor
public class Genre {
    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    private Long id;

    private String Name;

}