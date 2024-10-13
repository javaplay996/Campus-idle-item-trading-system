const menu = {
    list() {
        return [
    {
        "backMenu":[
            {
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"管理员管理",
                        "menuJump":"列表",
                        "tableName":"users"
                    }
                ],
                "menu":"管理员管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"商家管理",
                        "menuJump":"列表",
                        "tableName":"shangjia"
                    }
                ],
                "menu":"商家管理"
            }
			,{
			    "child":[
			        {
			            "buttons":[
			                "查看",
			                "新增",
			                "修改",
			                "删除"
			            ],
			            "menu":"用户管理",
			            "menuJump":"列表",
			            "tableName":"yonghu"
			        }
			    ],
			    "menu":"用户管理"
			}
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"闲置物品管理",
                        "menuJump":"列表",
                        "tableName":"shangpin"
                    }
                    ,
                    {
                        "buttons":[
                            "查看",
                            "修改",
                            "删除"
                        ],
                        "menu":"闲置物品评论管理",
                        "menuJump":"列表",
                        "tableName":"shangpinCommentback"
                    }
                    ,
                    {
                        "buttons":[
                            "订单",
                            "查看",
                            "报表",
                            "删除"
                        ],
                        "menu":"闲置物品订单管理",
                        "menuJump":"列表",
                        "tableName":"shangpinOrder"
                    }
                ],
                "menu":"闲置物品管理"
            }
			,{
			    "child":[
			        {
			            "buttons":[
			                "查看",
			                "新增",
			                "修改",
			                "删除"
			            ],
			            "menu":"资讯信息管理",
			            "menuJump":"列表",
			            "tableName":"news"
			        }
			    ],
			    "menu":"资讯信息管理"
			}
			,{
			    "child":[
			        {
			            "buttons":[
			                "查看",
			                "新增",
			                "删除",
			                "修改"
			            ],
			            "menu":"资讯类型管理",
			            "menuJump":"列表",
			            "tableName":"dictionaryNews"
			        }
			
			        ,
			        {
			            "buttons":[
			                "查看",
			                "新增",
			                "删除",
			                "修改"
			            ],
			            "menu":"商家信用类型管理",
			            "menuJump":"列表",
			            "tableName":"dictionaryShangjiaXingji"
			        }
			
			        ,
			        {
			            "buttons":[
			                "查看",
			                "新增",
			                "删除",
			                "修改"
			            ],
			            "menu":"闲置物品类型管理",
			            "menuJump":"列表",
			            "tableName":"dictionaryShangpin"
			        }
			    ],
			    "menu":"基础数据管理"
			}
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"轮播图管理",
                        "menuJump":"列表",
                        "tableName":"config"
                    }
                ],
                "menu":"轮播图信息"
            }
        ],
        "frontMenu":[],
        "hasBackLogin":"是",
        "hasBackRegister":"否",
        "hasFrontLogin":"否",
        "hasFrontRegister":"否",
        "roleName":"管理员",
        "tableName":"users"
    },
	{
	    "backMenu":[
	        {
	            "child":[
	                {
	                    "buttons":[
	                        "查看",
	                        "新增",
	                        "修改",
	                        "删除"
	                    ],
	                    "menu":"闲置物品管理",
	                    "menuJump":"列表",
	                    "tableName":"shangpin"
	                }
	                ,
	                {
	                    "buttons":[
	                        "查看",
	                        "修改",
	                        "删除"
	                    ],
	                    "menu":"闲置物品评论管理",
	                    "menuJump":"列表",
	                    "tableName":"shangpinCommentback"
	                }
	                ,
	                {
	                    "buttons":[
	                        "订单",
	                        "查看",
	                        "删除"
	                    ],
	                    "menu":"闲置物品订单管理",
	                    "menuJump":"列表",
	                    "tableName":"shangpinOrder"
	                }
	            ],
	            "menu":"闲置物品管理"
	        }
			,{
			    "child":[
			        {
			            "buttons":[
			                "查看",
			            ],
			            "menu":"资讯信息管理",
			            "menuJump":"列表",
			            "tableName":"news"
			        }
			    ],
			    "menu":"资讯信息管理"
			}
	    ],
	    "frontMenu":[],
	    "hasBackLogin":"是",
	    "hasBackRegister":"否",
	    "hasFrontLogin":"否",
	    "hasFrontRegister":"否",
	    "roleName":"商家",
	    "tableName":"shangjia"
	}
]
    }
}
export default menu;