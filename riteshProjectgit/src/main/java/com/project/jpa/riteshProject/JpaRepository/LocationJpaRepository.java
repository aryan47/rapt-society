package com.project.jpa.riteshProject.JpaRepository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

import com.project.jpa.riteshProject.entity.Location;

@RepositoryRestResource(path = "locations", collectionResourceRel="locations")
public interface LocationJpaRepository extends JpaRepository<Location, Long> {
	
}
