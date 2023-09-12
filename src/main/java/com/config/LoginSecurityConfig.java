package com.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.provisioning.InMemoryUserDetailsManager;



@Configuration
@EnableWebSecurity
public class LoginSecurityConfig extends WebSecurityConfigurerAdapter{

	@Override
	protected void configure(HttpSecurity http) throws Exception {	
		http.csrf().disable()
			.authorizeRequests()
			.antMatchers("/login", "/dangnhap").permitAll()
			.anyRequest().authenticated()
			.and()
				.formLogin()
				.loginPage("/login")
				.loginProcessingUrl("/dangnhap")
				.defaultSuccessUrl("/", true)
				.failureUrl("/login?error")
				.usernameParameter("email").passwordParameter("password")				
				.and()
				.logout().logoutSuccessUrl("/login?logout");
				
		
	}
	
	

	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		auth.authenticationProvider(authProvider());
	}



	@Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }
	
	@Bean
	public UserDetailsService users() {
		UserDetails user = User.builder()
			.username("user@gmail.com")
			.password(passwordEncoder().encode("user"))
			.roles("USER")
			.build();
		UserDetails admin = User.builder()
			.username("admin@gmail.com")
			.password(passwordEncoder().encode("admin"))
			.roles("USER", "ADMIN")
			.build();
		return new InMemoryUserDetailsManager(user, admin);
	}
	
    @Bean
    public DaoAuthenticationProvider authProvider() {
        DaoAuthenticationProvider authProvider = new DaoAuthenticationProvider();
        authProvider.setUserDetailsService(users());
        authProvider.setPasswordEncoder(passwordEncoder());
        return authProvider;
    }

}
