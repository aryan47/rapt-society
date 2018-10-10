package com.project.jpa.riteshProject.security;

import org.springframework.context.annotation.Configuration;
import org.springframework.core.annotation.Order;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

@Configuration
@Order(1)
public class TutorSecurityConfiguration extends WebSecurityConfigurerAdapter {


	protected void configure(HttpSecurity http) throws Exception {
		http.authorizeRequests().antMatchers("**/tutor/**").hasAnyRole("TUTOR", "ADMIN").and().formLogin()
				.loginPage("/forgotPassword").successForwardUrl("/").failureUrl("/login?error=true").and().logout()
				.logoutRequestMatcher(new AntPathRequestMatcher("/logout")).logoutSuccessUrl("/").permitAll().and()
				.rememberMe().and().csrf().disable();
		http.headers().frameOptions().sameOrigin();

	}

}
