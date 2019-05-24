package edu.challenge.entity;

import java.util.ArrayList;
import java.util.List;

public class TbClassesExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public TbClassesExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andClassIdIsNull() {
            addCriterion("class_id is null");
            return (Criteria) this;
        }

        public Criteria andClassIdIsNotNull() {
            addCriterion("class_id is not null");
            return (Criteria) this;
        }

        public Criteria andClassIdEqualTo(Integer value) {
            addCriterion("class_id =", value, "classId");
            return (Criteria) this;
        }

        public Criteria andClassIdNotEqualTo(Integer value) {
            addCriterion("class_id <>", value, "classId");
            return (Criteria) this;
        }

        public Criteria andClassIdGreaterThan(Integer value) {
            addCriterion("class_id >", value, "classId");
            return (Criteria) this;
        }

        public Criteria andClassIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("class_id >=", value, "classId");
            return (Criteria) this;
        }

        public Criteria andClassIdLessThan(Integer value) {
            addCriterion("class_id <", value, "classId");
            return (Criteria) this;
        }

        public Criteria andClassIdLessThanOrEqualTo(Integer value) {
            addCriterion("class_id <=", value, "classId");
            return (Criteria) this;
        }

        public Criteria andClassIdIn(List<Integer> values) {
            addCriterion("class_id in", values, "classId");
            return (Criteria) this;
        }

        public Criteria andClassIdNotIn(List<Integer> values) {
            addCriterion("class_id not in", values, "classId");
            return (Criteria) this;
        }

        public Criteria andClassIdBetween(Integer value1, Integer value2) {
            addCriterion("class_id between", value1, value2, "classId");
            return (Criteria) this;
        }

        public Criteria andClassIdNotBetween(Integer value1, Integer value2) {
            addCriterion("class_id not between", value1, value2, "classId");
            return (Criteria) this;
        }

        public Criteria andClassNumIsNull() {
            addCriterion("class_num is null");
            return (Criteria) this;
        }

        public Criteria andClassNumIsNotNull() {
            addCriterion("class_num is not null");
            return (Criteria) this;
        }

        public Criteria andClassNumEqualTo(String value) {
            addCriterion("class_num =", value, "classNum");
            return (Criteria) this;
        }

        public Criteria andClassNumNotEqualTo(String value) {
            addCriterion("class_num <>", value, "classNum");
            return (Criteria) this;
        }

        public Criteria andClassNumGreaterThan(String value) {
            addCriterion("class_num >", value, "classNum");
            return (Criteria) this;
        }

        public Criteria andClassNumGreaterThanOrEqualTo(String value) {
            addCriterion("class_num >=", value, "classNum");
            return (Criteria) this;
        }

        public Criteria andClassNumLessThan(String value) {
            addCriterion("class_num <", value, "classNum");
            return (Criteria) this;
        }

        public Criteria andClassNumLessThanOrEqualTo(String value) {
            addCriterion("class_num <=", value, "classNum");
            return (Criteria) this;
        }

        public Criteria andClassNumLike(String value) {
            addCriterion("class_num like", value, "classNum");
            return (Criteria) this;
        }

        public Criteria andClassNumNotLike(String value) {
            addCriterion("class_num not like", value, "classNum");
            return (Criteria) this;
        }

        public Criteria andClassNumIn(List<String> values) {
            addCriterion("class_num in", values, "classNum");
            return (Criteria) this;
        }

        public Criteria andClassNumNotIn(List<String> values) {
            addCriterion("class_num not in", values, "classNum");
            return (Criteria) this;
        }

        public Criteria andClassNumBetween(String value1, String value2) {
            addCriterion("class_num between", value1, value2, "classNum");
            return (Criteria) this;
        }

        public Criteria andClassNumNotBetween(String value1, String value2) {
            addCriterion("class_num not between", value1, value2, "classNum");
            return (Criteria) this;
        }

        public Criteria andClassDepaIsNull() {
            addCriterion("class_depa is null");
            return (Criteria) this;
        }

        public Criteria andClassDepaIsNotNull() {
            addCriterion("class_depa is not null");
            return (Criteria) this;
        }

        public Criteria andClassDepaEqualTo(String value) {
            addCriterion("class_depa =", value, "classDepa");
            return (Criteria) this;
        }

        public Criteria andClassDepaNotEqualTo(String value) {
            addCriterion("class_depa <>", value, "classDepa");
            return (Criteria) this;
        }

        public Criteria andClassDepaGreaterThan(String value) {
            addCriterion("class_depa >", value, "classDepa");
            return (Criteria) this;
        }

        public Criteria andClassDepaGreaterThanOrEqualTo(String value) {
            addCriterion("class_depa >=", value, "classDepa");
            return (Criteria) this;
        }

        public Criteria andClassDepaLessThan(String value) {
            addCriterion("class_depa <", value, "classDepa");
            return (Criteria) this;
        }

        public Criteria andClassDepaLessThanOrEqualTo(String value) {
            addCriterion("class_depa <=", value, "classDepa");
            return (Criteria) this;
        }

        public Criteria andClassDepaLike(String value) {
            addCriterion("class_depa like", value, "classDepa");
            return (Criteria) this;
        }

        public Criteria andClassDepaNotLike(String value) {
            addCriterion("class_depa not like", value, "classDepa");
            return (Criteria) this;
        }

        public Criteria andClassDepaIn(List<String> values) {
            addCriterion("class_depa in", values, "classDepa");
            return (Criteria) this;
        }

        public Criteria andClassDepaNotIn(List<String> values) {
            addCriterion("class_depa not in", values, "classDepa");
            return (Criteria) this;
        }

        public Criteria andClassDepaBetween(String value1, String value2) {
            addCriterion("class_depa between", value1, value2, "classDepa");
            return (Criteria) this;
        }

        public Criteria andClassDepaNotBetween(String value1, String value2) {
            addCriterion("class_depa not between", value1, value2, "classDepa");
            return (Criteria) this;
        }

        public Criteria andClassMajorIsNull() {
            addCriterion("class_major is null");
            return (Criteria) this;
        }

        public Criteria andClassMajorIsNotNull() {
            addCriterion("class_major is not null");
            return (Criteria) this;
        }

        public Criteria andClassMajorEqualTo(String value) {
            addCriterion("class_major =", value, "classMajor");
            return (Criteria) this;
        }

        public Criteria andClassMajorNotEqualTo(String value) {
            addCriterion("class_major <>", value, "classMajor");
            return (Criteria) this;
        }

        public Criteria andClassMajorGreaterThan(String value) {
            addCriterion("class_major >", value, "classMajor");
            return (Criteria) this;
        }

        public Criteria andClassMajorGreaterThanOrEqualTo(String value) {
            addCriterion("class_major >=", value, "classMajor");
            return (Criteria) this;
        }

        public Criteria andClassMajorLessThan(String value) {
            addCriterion("class_major <", value, "classMajor");
            return (Criteria) this;
        }

        public Criteria andClassMajorLessThanOrEqualTo(String value) {
            addCriterion("class_major <=", value, "classMajor");
            return (Criteria) this;
        }

        public Criteria andClassMajorLike(String value) {
            addCriterion("class_major like", value, "classMajor");
            return (Criteria) this;
        }

        public Criteria andClassMajorNotLike(String value) {
            addCriterion("class_major not like", value, "classMajor");
            return (Criteria) this;
        }

        public Criteria andClassMajorIn(List<String> values) {
            addCriterion("class_major in", values, "classMajor");
            return (Criteria) this;
        }

        public Criteria andClassMajorNotIn(List<String> values) {
            addCriterion("class_major not in", values, "classMajor");
            return (Criteria) this;
        }

        public Criteria andClassMajorBetween(String value1, String value2) {
            addCriterion("class_major between", value1, value2, "classMajor");
            return (Criteria) this;
        }

        public Criteria andClassMajorNotBetween(String value1, String value2) {
            addCriterion("class_major not between", value1, value2, "classMajor");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}