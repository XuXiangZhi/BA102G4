package com.adapply.model;

import java.util.List;
import java.util.Set;

public interface AD_ApplyDAO_interface {
	public void insert(AD_ApplyVO adApplyVO);
	public void update(AD_ApplyVO adApplyVO);
	public void update_stat(AD_ApplyVO adApplyVO);
	public void delete(String ad_no);
	public AD_ApplyVO findByPrimaryKey(String ad_no);
	public Set<AD_ApplyVO> getStat(Integer arv_stat);
	public List<AD_ApplyVO> getAll();
}
