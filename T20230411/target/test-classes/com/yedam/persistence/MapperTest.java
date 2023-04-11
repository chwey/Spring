import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import com.yedam.board.control.BoardControlTest;
import com.yedam.board.persistence.BoardMapper;
import com.yedam.board.persistence.MapperTest;
import com.yedam.domain.BookVO;
import com.yedam.persistence.BookMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;


@WebAppConfiguration // 컨트롤 테스트용
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({ "file:src/main/webapp/WEB-INF/spring/root-context.xml",
		"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml" })
@Log4j
public class MapperTest {
	
//	@Setter(onMethod_ = @Autowired)
//	private BookMapper mapper;
//	
	@Test
	public void insertTest() {
		BookVO book = new BookVO();
		book.setBookNo("1");
		book.setBookName("책명");
		book.setBookCoverimg("표지");
		book.setBookDate("23/01/01");
		book.setBookPrice("30000");
		book.setBookPublisher("출판사");
		book.setBookInfo("책정보");
		mapper.insertSelectKey(book);
	}

	
