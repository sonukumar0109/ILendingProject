package nucleus.config;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.password.PasswordEncoder;

import javax.sql.DataSource;

@Configuration
@EnableWebSecurity
public class MySecurityConfig extends WebSecurityConfigurerAdapter {

    @Autowired
    PasswordEncoder passwordEncoder;

    @Autowired
    private DataSource dataSource;

    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {

        auth
//             .jdbcAuthentication().dataSource(dataSource).passwordEncoder(passwordEncoder);
                .inMemoryAuthentication()
                .withUser("sonu")
                .password("123")
                .roles("Maker")
                .and()
                .withUser("mani")
                .password("123")
                .roles("Checker");
        //username pass enabled
        //authority username

    }


    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http
                .authorizeRequests()
                .antMatchers("/maker").hasRole("Maker")
                .antMatchers("/checker").hasRole("Checker")

                .and()
                .httpBasic()
                .and()
                .formLogin().loginPage("/mycustomlogin").loginProcessingUrl("/process-login")
                .and()
                .logout()
                .and()
                .exceptionHandling().accessDeniedPage("/accessdeny");

    }


}
