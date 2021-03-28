package PVZ.Cmd
{
   import com.tencent.protobuf.Message;
   import com.tencent.protobuf.ReadUtils;
   import com.tencent.protobuf.WireType;
   import com.tencent.protobuf.WriteUtils;
   import com.tencent.protobuf.WritingBuffer;
   import com.tencent.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import flash.errors.IOError;
   import flash.utils.IDataInput;
   
   public final class Cmd_GuildFight_GetBetNumReward_SC extends Message
   {
      
      public static const $MessageID:String = "PVZ.Cmd.Cmd_GuildFight_GetBetNumReward_SC";
      
      public static const NUMREWARD:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("PVZ.Cmd.Cmd_GuildFight_GetBetNumReward_SC.numReward","numReward",3 << 3 | WireType.LENGTH_DELIMITED,Dto_IdNum);
       
      
      private var numReward$field:Dto_IdNum;
      
      public function Cmd_GuildFight_GetBetNumReward_SC()
      {
         super();
      }
      
      override public function get $messageID() : String
      {
         return Cmd_GuildFight_GetBetNumReward_SC.$MessageID;
      }
      
      public function clearNumReward() : void
      {
         this.numReward$field = null;
      }
      
      public function get hasNumReward() : Boolean
      {
         return this.numReward$field != null;
      }
      
      public function set numReward(param1:Dto_IdNum) : void
      {
         this.numReward$field = param1;
      }
      
      public function get numReward() : Dto_IdNum
      {
         return this.numReward$field;
      }
      
      override public final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasNumReward)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_MESSAGE(param1,this.numReward$field);
         }
         for(_loc2_ in this)
         {
            super.writeUnknown(param1,_loc2_);
         }
      }
      
      override public final function readFromSlice(param1:IDataInput, param2:uint) : void
      {
         var _loc4_:uint = 0;
         var _loc3_:uint = 0;
         while(param1.bytesAvailable > param2)
         {
            _loc4_ = ReadUtils.read$TYPE_UINT32(param1);
            switch(_loc4_ >> 3)
            {
               case 3:
                  if(_loc3_ != 0)
                  {
                     throw new IOError("Bad data format: Cmd_GuildFight_GetBetNumReward_SC.numReward cannot be set twice.");
                  }
                  _loc3_++;
                  this.numReward = new Dto_IdNum();
                  ReadUtils.read$TYPE_MESSAGE(param1,this.numReward);
                  break;
               default:
                  super.readUnknown(param1,_loc4_);
                  break;
            }
         }
      }
   }
}
