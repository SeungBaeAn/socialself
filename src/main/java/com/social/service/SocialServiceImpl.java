package com.social.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.social.dao.SocialMapper;
import com.social.domain.SocialCommand;



@Service("socialService")
public class SocialServiceImpl implements SocialService{

	//Reosurce  socialMapper 
	@Resource(name="socialMapper")
	SocialMapper socialMapper;
	
	@Override
	public SocialCommand getStepList1(Map<String,Object> map) {
		return socialMapper.getStepList1(map);
	}
	@Override
	public SocialCommand getStepList2(int kpi_seq) {
		return socialMapper.getStepList2(kpi_seq);
	}
	@Override
	public SocialCommand getStepList3(int kpi_seq) {
		return socialMapper.getStepList3(kpi_seq);
	}
	@Override
	public SocialCommand getStepResult(int kpi_seq) {
		return socialMapper.getStepResult(kpi_seq);
	}
	@Override
	public SocialCommand resultSteptop(int kpi_seq) {
		return socialMapper.resultSteptop(kpi_seq);
	}
	@Override
	public SocialCommand resultSteplow(int kpi_seq) {
		return socialMapper.resultSteplow(kpi_seq);
	}
	@Override
	public SocialCommand resultMent(int kpi_seq) {
		return socialMapper.resultMent(kpi_seq);
	}	
	@Override
	public void insertSocial(SocialCommand social) {
		socialMapper.insertSocial(social);
	}

	@Override
	public void updateStep1(SocialCommand social){
		socialMapper.updateStep1(social);
	}
	@Override
	public void updateStep2(SocialCommand social){
		socialMapper.updateStep2(social);
	}
	@Override
	public void updateStep3(SocialCommand social){
		socialMapper.updateStep3(social);
	}	
	@Override
	public void updateStep4(SocialCommand social){
		socialMapper.updateStep4(social);
	}
	@Override
	public void updateStep5(SocialCommand social){
		socialMapper.updateStep5(social);
	}
	@Override
	public void updateStep6(SocialCommand social){
		socialMapper.updateStep6(social);
	}	
	@Override
	public void updateStep7(SocialCommand social){
		socialMapper.updateStep7(social);
	}	
	@Override
	public void updateStep8(SocialCommand social){
		socialMapper.updateStep8(social);
	}
	@Override
	public void updateStep9(SocialCommand social){
		socialMapper.updateStep9(social);
	}
	
	@Override
	public List<SocialCommand> chartAllSocialList(Map<String,Object> map) {
		return socialMapper.chartAllSocialList(map);
	}
	
	@Override
	public List<SocialCommand> chartAllTotal(Map<String,Object> map) {
		return socialMapper.chartAllTotal(map);
	}
	@Override
	public List<SocialCommand> chartAllMyTotal(Map<String,Object> map) {
		return socialMapper.chartAllMyTotal(map);
	}
	@Override
	public List<SocialCommand> chartRaderSocial(Map<String,Object> map) {
		return socialMapper.chartRaderSocial(map);
	}	
	
	@Override
	public List<SocialCommand> socialCorpList(Map<String,Object> map) {
		return socialMapper.socialCorpList(map);
	}
	@Override
	public List<SocialCommand> CorpSelList(Map<String,Object> map) {
		return socialMapper.CorpSelList(map);
	}
	@Override
	public List<SocialCommand> eventList(Map<String,Object> map) {
		return socialMapper.eventList(map);
	}
	@Override
	public int getCropCount() {
		return socialMapper.getCropCount();
    }
	@Override
	public int getEventCount() {
		return socialMapper.getEventCount();
    }
	@Override
	public int getSelCount(Map<String, Object> map) {
		return socialMapper.getSelCount(map);
	}
	
}
