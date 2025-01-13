<?php

/**
 * This class has been generated by dagger-php-sdk. DO NOT EDIT.
 */

declare(strict_types=1);

namespace Dagger;

/**
 * An individual cache entry in a cache entry set
 */
class EngineCacheEntry extends Client\AbstractObject implements Client\IdAble
{
    /**
     * Whether the cache entry is actively being used.
     */
    public function activelyUsed(): bool
    {
        $leafQueryBuilder = new \Dagger\Client\QueryBuilder('activelyUsed');
        return (bool)$this->queryLeaf($leafQueryBuilder, 'activelyUsed');
    }

    /**
     * The time the cache entry was created, in Unix nanoseconds.
     */
    public function createdTimeUnixNano(): int
    {
        $leafQueryBuilder = new \Dagger\Client\QueryBuilder('createdTimeUnixNano');
        return (int)$this->queryLeaf($leafQueryBuilder, 'createdTimeUnixNano');
    }

    /**
     * The description of the cache entry.
     */
    public function description(): string
    {
        $leafQueryBuilder = new \Dagger\Client\QueryBuilder('description');
        return (string)$this->queryLeaf($leafQueryBuilder, 'description');
    }

    /**
     * The disk space used by the cache entry.
     */
    public function diskSpaceBytes(): int
    {
        $leafQueryBuilder = new \Dagger\Client\QueryBuilder('diskSpaceBytes');
        return (int)$this->queryLeaf($leafQueryBuilder, 'diskSpaceBytes');
    }

    /**
     * A unique identifier for this EngineCacheEntry.
     */
    public function id(): EngineCacheEntryId
    {
        $leafQueryBuilder = new \Dagger\Client\QueryBuilder('id');
        return new \Dagger\EngineCacheEntryId((string)$this->queryLeaf($leafQueryBuilder, 'id'));
    }

    /**
     * The most recent time the cache entry was used, in Unix nanoseconds.
     */
    public function mostRecentUseTimeUnixNano(): int
    {
        $leafQueryBuilder = new \Dagger\Client\QueryBuilder('mostRecentUseTimeUnixNano');
        return (int)$this->queryLeaf($leafQueryBuilder, 'mostRecentUseTimeUnixNano');
    }
}
