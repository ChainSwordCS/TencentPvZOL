package PVZ.Cmd
{
   import com.tencent.protobuf.Int64;
   import com.tencent.protobuf.Message;
   import com.tencent.protobuf.ReadUtils;
   import com.tencent.protobuf.WireType;
   import com.tencent.protobuf.WriteUtils;
   import com.tencent.protobuf.WritingBuffer;
   import com.tencent.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT64;
   import com.tencent.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.tencent.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import flash.errors.IOError;
   import flash.utils.IDataInput;
   
   public final class Cmd_GuildFight_GetBetReturnReward_SC extends Message
   {
      
      public static const $MessageID:String = "PVZ.Cmd.Cmd_GuildFight_GetBetReturnReward_SC";
      
      public static const STAGE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("PVZ.Cmd.Cmd_GuildFight_GetBetReturnReward_SC.stage","stage",1 << 3 | WireType.VARINT);
      
      public static const SUPPORTGUILDID:FieldDescriptor$TYPE_INT64 = new FieldDescriptor$TYPE_INT64("PVZ.Cmd.Cmd_GuildFight_GetBetReturnReward_SC.supportGuildId","supportGuildId",2 << 3 | WireType.VARINT);
      
      public static const RETURNREWARD:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("PVZ.Cmd.Cmd_GuildFight_GetBetReturnReward_SC.returnReward","returnReward",3 << 3 | WireType.LENGTH_DELIMITED,Dto_IdNum);
       
      
      private var stage$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var supportGuildId$field:Int64;
      
      private var returnReward$field:Dto_IdNum;
      
      public function Cmd_GuildFight_GetBetReturnReward_SC()
      {
         super();
      }
      
      override public function get $messageID() : String
      {
         return Cmd_GuildFight_GetBetReturnReward_SC.$MessageID;
      }
      
      public function clearStage() : void
      {
         this.hasField$0 &= 4294967294;
         this.stage$field = new uint();
      }
      
      public function get hasStage() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set stage(param1:uint) : void
      {
         this.hasField$0 |= 1;
         this.stage$field = param1;
      }
      
      public function get stage() : uint
      {
         return this.stage$field;
      }
      
      public function clearSupportGuildId() : void
      {
         this.supportGuildId$field = null;
      }
      
      public function get hasSupportGuildId() : Boolean
      {
         return this.supportGuildId$field != null;
      }
      
      public function set supportGuildId(param1:Int64) : void
      {
         this.supportGuildId$field = param1;
      }
      
      public function get supportGuildId() : Int64
      {
         return this.supportGuildId$field;
      }
      
      public function clearReturnReward() : void
      {
         this.returnReward$field = null;
      }
      
      public function get hasReturnReward() : Boolean
      {
         return this.returnReward$field != null;
      }
      
      public function set returnReward(param1:Dto_IdNum) : void
      {
         this.returnReward$field = param1;
      }
      
      public function get returnReward() : Dto_IdNum
      {
         return this.returnReward$field;
      }
      
      override public final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasStage)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_UINT32(param1,this.stage$field);
         }
         if(this.hasSupportGuildId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_INT64(param1,this.supportGuildId$field);
         }
         if(this.hasReturnReward)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_MESSAGE(param1,this.returnReward$field);
         }
         for(_loc2_ in this)
         {
            super.writeUnknown(param1,_loc2_);
         }
      }
      
      override public final function readFromSlice(param1:IDataInput, param2:uint) : void
      {
         var _loc6_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:uint = 0;
         while(param1.bytesAvailable > param2)
         {
            _loc6_ = ReadUtils.read$TYPE_UINT32(param1);
            switch(_loc6_ >> 3)
            {
               case 1:
                  if(_loc3_ != 0)
                  {
                     throw new IOError("Bad data format: Cmd_GuildFight_GetBetReturnReward_SC.stage cannot be set twice.");
                  }
                  _loc3_++;
                  this.stage = ReadUtils.read$TYPE_UINT32(param1);
                  break;
               case 2:
                  if(_loc4_ != 0)
                  {
                     throw new IOError("Bad data format: Cmd_GuildFight_GetBetReturnReward_SC.supportGuildId cannot be set twice.");
                  }
                  _loc4_++;
                  this.supportGuildId = ReadUtils.read$TYPE_INT64(param1);
                  break;
               case 3:
                  if(_loc5_ != 0)
                  {
                     throw new IOError("Bad data format: Cmd_GuildFight_GetBetReturnReward_SC.returnReward cannot be set twice.");
                  }
                  _loc5_++;
                  this.returnReward = new Dto_IdNum();
                  ReadUtils.read$TYPE_MESSAGE(param1,this.returnReward);
                  break;
               default:
                  super.readUnknown(param1,_loc6_);
                  break;
            }
         }
      }
   }
}
