package com.project.jpa.riteshProject.beans;

import javax.persistence.Embeddable;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Embeddable
@Data
@NoArgsConstructor
@AllArgsConstructor
public class StudentQualification {
 private String boardName;
 private String stdName;
}
