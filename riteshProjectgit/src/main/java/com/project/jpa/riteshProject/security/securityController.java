package com.project.jpa.riteshProject.security;

import org.springframework.context.annotation.Bean;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;

@Controller
@EnableWebSecurity
public class securityController extends WebSecurityConfigurerAdapter {

	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		auth.inMemoryAuthentication().withUser("admin").password("{noop}password").roles("USER","ADMIN").and()
		.withUser("user").password("{noop}password").roles("USER")	;
	}

	protected void configure(HttpSecurity http) throws Exception {
		http.httpBasic().and().authorizeRequests()
		.antMatchers("/bookSchedule/**").hasRole("USER").and()
		.formLogin().loginPage("/login").and()
		.csrf().disable();
		http.headers().frameOptions().sameOrigin();

	}
	
	@Bean
	public BCryptPasswordEncoder encodePwd() {
		return new BCryptPasswordEncoder();
	}
}
