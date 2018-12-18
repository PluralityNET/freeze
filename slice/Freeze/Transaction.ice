// **********************************************************************
//
// Copyright (c) 2003-present ZeroC, Inc. All rights reserved.
//
// **********************************************************************

#pragma once

[["cpp:header-ext:h", "cpp:dll-export:FREEZE_API"]]

module Freeze
{

local interface Connection;

/**
 *
 * A transaction. If you want to use a transaction concurrently
 * in multiple threads, you need to serialize access to this
 * transaction.
 *
 **/
local interface Transaction
{
    /**
     *
     * Commit this transaction.
     *
     * @throws DatabaseException Raised if a database failure occurred.
     *
     **/
    void commit();

    /**
     *
     * Roll back this transaction.
     *
     * @throws DatabaseException Raised if a database failure occurred.
     *
     **/
    void rollback();

    /**
     *
     * Get the connection associated with this transaction.
     *
     * @return The connection.
     *
     **/
    ["cpp:const"] Connection getConnection();
}

}
