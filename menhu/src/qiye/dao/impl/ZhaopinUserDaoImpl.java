package qiye.dao.impl;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import qiye.dao.ZhaopinUserDao;
import qiye.model.ZhaopinUser;

import java.sql.SQLException;
import java.util.List;

public class ZhaopinUserDaoImpl extends HibernateDaoSupport implements ZhaopinUserDao {
    @Override
    public void insertBean(ZhaopinUser bean) {
        this.getHibernateTemplate().save(bean);
    }

    @Override
    public void deleteBean(ZhaopinUser bean) {
        this.getHibernateTemplate().delete(bean);
    }

    @Override
    public void updateBean(ZhaopinUser bean) {
        this.getHibernateTemplate().update(bean);
    }

    @Override
    public ZhaopinUser selectBean(String where) {
        List<ZhaopinUser> list = this.getHibernateTemplate().find("from ZhaopinUser " +where);
        if(list.size()==0){
            return null;
        }
        return list.get(0);
    }

    @Override
    public List<ZhaopinUser> selectBeanList(int start, int limit, String where) {
        return (List<ZhaopinUser>)this.getHibernateTemplate().executeFind(new HibernateCallback() {
            public Object doInHibernate(final Session session)throws HibernateException, SQLException {
                List<ZhaopinUser> list = session.createQuery("from ZhaopinUser "+where)
                        .setFirstResult(start)
                        .setMaxResults(limit)
                        .list();
                return list;
            }
        });
    }

    @Override
    public int selectBeanCount(String where) {
        long count = (Long)this.getHibernateTemplate().find("select count(*) from ZhaopinUser "+where).get(0);
        return (int)count;
    }
}
