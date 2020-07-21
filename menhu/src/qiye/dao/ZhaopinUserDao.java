package qiye.dao;

import qiye.model.ZhaopinUser;

import java.util.List;

public interface ZhaopinUserDao{

    public void insertBean(ZhaopinUser bean);

    public void deleteBean(ZhaopinUser bean);

    public void updateBean(ZhaopinUser bean);

    public ZhaopinUser selectBean(String where);

    public List<ZhaopinUser> selectBeanList(final int start, final int limit, final String where);

    public int selectBeanCount(final String where);
}
