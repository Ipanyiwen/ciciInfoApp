package dao;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import pojo.Users;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * Description:
 * User: panyiwen
 * Date: 2018-08-29
 * Time: 下午8:49
 */
public interface UserRelationDao {

    @Insert("insert into user_relation values(#{uid}, #{fid})")
    public boolean addRelation(@Param("uid") long uid, @Param("fid") long fid);

    @Insert("delete from user_relation where userID=#{uid} and friendID=#{fid}")
    public boolean removeRelation(@Param("uid") long uid, @Param("fid") long fid);

    @Select("select ID,userLogin,userNicename,userEmail,userRegistered,userStatus,signature,pic from users where ID in (select friendID from user_relation where userId = #{uid})")
    public List<Users> listAttentionByID(@Param("uid") long uid);

    @Select("select ID,userLogin,userNicename,userEmail,userRegistered,userStatus,signature,pic from users where ID in (select userID from user_relation where friendID = #{uid})")
    public List<Users> listFansByID(@Param("uid") long uid);


}
