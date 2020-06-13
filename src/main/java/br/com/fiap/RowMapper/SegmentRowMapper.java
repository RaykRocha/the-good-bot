package br.com.fiap.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.RowMapper;
import br.com.fiap.model.BotModel;
import br.com.fiap.model.SegmentModel;

public class SegmentRowMapper implements RowMapper<SegmentModel> {

	@Override
	public SegmentModel mapRow(ResultSet rs, int rowNum) throws SQLException {

		SegmentModel segment = new BeanPropertyRowMapper<>(SegmentModel.class).mapRow(rs, rowNum);
		BotModel bot = new BeanPropertyRowMapper<>(BotModel.class).mapRow(rs, rowNum);
		segment.setBot(bot);
		return segment;
	}
}
