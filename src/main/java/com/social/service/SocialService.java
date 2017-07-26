package com.social.service;
import java.util.List;
import java.util.Map;

import com.social.domain.SocialCommand;

public interface SocialService {
//	public List<SocialCommand> getMemberList(Map<String,Object> map);
	public SocialCommand getStepList1(Map<String,Object> map);
	public SocialCommand getStepList2(int kpi_seq);
	public SocialCommand getStepList3(int kpi_seq);
	public SocialCommand getStepResult(int kpi_seq);
	public SocialCommand resultSteptop(int kpi_seq);
	public SocialCommand resultSteplow(int kpi_seq);
	public SocialCommand resultMent(int kpi_seq);
//	public int getMemberCount();
	public void insertSocial(SocialCommand social);
//	public SocialCommand getMember(String id);
//	public void updateMember(SocialCommand member);
//	public void deleteMember(String id);
//	public SocialCommand getStepList1();
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
}
