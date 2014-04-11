

-record(condition, {
        % 标签:level、sex、job、coin、gold ....
        lable       ::atom()
        % 比较运算符(默认为等于)，注意某些值只能使用eq运算符
        % eq: 等于
        % lt: 小于
        % gt: 大于
        % le: 小于等于
        % ge: 大于等于
        % range: 范围
        ,op = eq        :: ue | eq | lt | gt | le | ge | range
        % 根据标签类型定义值
        ,val = 0 ::term()
    }).


