package edu.challenge.mapper;

import edu.challenge.entity.DepaMajorExample;
import edu.challenge.entity.DepaMajorKey;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface DepaMajorMapper {
    int countByExample(DepaMajorExample example);

    int deleteByExample(DepaMajorExample example);

    int deleteByPrimaryKey(DepaMajorKey key);

    int insert(DepaMajorKey record);

    int insertSelective(DepaMajorKey record);

    List<DepaMajorKey> selectByExample(DepaMajorExample example);

    int updateByExampleSelective(@Param("record") DepaMajorKey record, @Param("example") DepaMajorExample example);

    int updateByExample(@Param("record") DepaMajorKey record, @Param("example") DepaMajorExample example);
    
    
    List<DepaMajorKey> selectByDepa(String depaname);
}