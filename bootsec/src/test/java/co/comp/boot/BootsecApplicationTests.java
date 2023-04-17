package co.comp.boot;

import java.util.Date;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import co.comp.boot.mapper.TempMapper;
import lombok.extern.log4j.Log4j2;

@SpringBootTest
@Log4j2
class BootsecApplicationTests {

	@Autowired TempMapper tempMapper;
	
	//@Test
	void contextLoads() {
	}
	
	@Test
	void getDate() {
		Date date = tempMapper.getDate();		
		log.debug(date);
	}
}
