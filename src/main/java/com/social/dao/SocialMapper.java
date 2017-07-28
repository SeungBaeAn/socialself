package com.social.dao;
import java.util.List;
import java.util.Map;

import com.social.common.AbstractDAO;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import com.social.domain.SocialCommand;

@Repository("socialMapper")

public interface  SocialMapper {
	
//	public List<SocialCommand> getMemberList(Map<String,Object> map);
//	public List<SocialCommand> getStepList1(Map<String,Object> map);
	public SocialCommand getStepList1(Map<String,Object> map);
	@Select("SELECT count(*) FROM SOCIAL_INFO_MASTER WHERE KPI_STEP between '1' and '9'")
	public int getCropCount();
	@Select("SELECT count(*) FROM SOCIAL_INFO_MASTER WHERE KPI_STEP = '9'  AND EVENT_USE ='Y'")
	public int getEventCount();
	public SocialCommand getStepList2(int kpi_seq);
	public SocialCommand getStepList3(int kpi_seq);
	public SocialCommand getStepResult(int kpi_seq);	
//	public String getSelCount(String selfield);
	
	public SocialCommand resultSteptop(int kpi_seq);
	public SocialCommand resultSteplow(int kpi_seq);
	public SocialCommand resultMent(int kpi_seq);
//	@Select("SELECT count(*) FROM kpi_user")
//	public int getMemberCount();
//	@Insert(" INSERT INTO SOCIAL_INFO_MASTER(kpi_seq,LOAD_DATE,KPI_STEP) VALUES (SEQ_SOCIAL_KPI.NEXTVAL,TO_CHAR(SYSDATE,'YYYY-MM-DD.hh24mi'),'0')")
	public void insertSocial(SocialCommand social);
//	@Select("SELECT * FROM kpi_user WHERE id = #{id}")
//	public SocialCommand getMember(String id);
	@Update("UPDATE SOCIAL_INFO_MASTER  SET company  = #{company}  ,business_type = #{business_type} ,bs_type= #{bs_type} ,event_name= #{event_name, jdbcType=VARCHAR}   ,event_addr= #{event_addr, jdbcType=VARCHAR},event_hp = #{event_hp, jdbcType=VARCHAR},event_use = #{event_use, jdbcType=VARCHAR} ,kpi_step  = '1'  WHERE kpi_seq = #{kpi_seq} AND end_date IS NULL")
	public void updateStep1(SocialCommand social);
	public void updateStep2(SocialCommand social);
	public void updateStep3(SocialCommand social);
	public void updateStep4(SocialCommand social);	
	public void updateStep5(SocialCommand social);	
	public void updateStep6(SocialCommand social);	
	public void updateStep7(SocialCommand social);	
	public void updateStep8(SocialCommand social);	
	public void updateStep9(SocialCommand social);

	public List<SocialCommand> chartAllSocialList(Map<String,Object> map);
	public List<SocialCommand> chartAllTotal(Map<String,Object> map);
	public List<SocialCommand> chartAllMyTotal(Map<String,Object> map);
	public List<SocialCommand> chartRaderSocial(Map<String,Object> map);
	public List<SocialCommand> socialCorpList(Map<String,Object> map);
	public List<SocialCommand> CorpSelList(Map<String,Object> map);
	public List<SocialCommand> eventList(Map<String,Object> map);
//	@Select("SELECT count(*) FROM SOCIAL_INFO_MASTER WHERE KPI_STEP = '9'")
	public int getSelCount(Map<String,Object> map);
	
	
}
