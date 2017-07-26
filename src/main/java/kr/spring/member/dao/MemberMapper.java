package kr.spring.member.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import kr.spring.member.domain.MemberCommand;

@Repository("memberMapper")
public interface MemberMapper {
	public List<MemberCommand> getMemberList(Map<String,Object> map);
	@Select("SELECT count(*) FROM kpi_user")
	public int getMemberCount();
	@Insert("INSERT INTO kpi_user (id,passwd,name,reg_date) VALUES (#{id},#{passwd},#{name},sysdate)")
	public void insertMember(MemberCommand member);
	@Select("SELECT * FROM kpi_user WHERE id = #{id}")
	public MemberCommand getMember(String id);
	@Update("UPDATE kpi_user SET passwd=#{passwd},name=#{name} WHERE id = #{id}")
	public void updateMember(MemberCommand member);
	@Delete("DELETE FROM kpi_user WHERE id=#{id}")
	public void deleteMember(String id);
}
